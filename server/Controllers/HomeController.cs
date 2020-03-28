using Microsoft.AspNetCore.Mvc;

namespace MockTrial.Controllers
{
    public class HomeController : ControllerBase
    {
        [HttpGet]
        public ActionResult SPA()
        {
            return File("~/index.html", "text/html");
        }
    }
}