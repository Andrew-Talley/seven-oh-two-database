using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using MockTrial.Data;
using Microsoft.EntityFrameworkCore;
using MockTrial.Helpers;
using System.Text;
using EntityGraphQL.Schema;

namespace server
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();

            services.AddDbContext<MockTrialContext>(options => {
                options.UseMySQL(Configuration.GetConnectionString("DefaultConnection"));
            });

            services.AddSingleton(SchemaBuilder.FromObject<MockTrialContext>());
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {

            app.UseRouting();

            app.UseCors(x => 
                        x.AllowAnyOrigin()
                        .AllowAnyMethod()
                        .AllowAnyHeader());

            // app.UseAuthentication();
            // app.UseAuthorization();
            
            app.UseStaticFiles();
            app.UseDefaultFiles();
            
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller}/{action=Index}/{id?}"
                );

                // A catch-all to serve up the SPA
                endpoints.MapFallbackToController("SPA", "Home");
            });
        }
    }
}
