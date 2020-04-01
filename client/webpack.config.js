const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
require("babel-polyfill");

module.exports = {
	context: path.join(__dirname, '/src'),
	mode: 'development',
	entry: ['babel-polyfill', './App.tsx'],
	resolve: {
		extensions: [".ts", ".tsx"]
	},
	output: {
		filename: '[name].[chunkhash].js',
		path: path.resolve(__dirname, '../server/wwwroot')
	},
	module: {
		rules: [
			{
				test: /\.ts(x?)$/,
				exclude: /node_modules/,
				use: [
						{
								loader: "ts-loader"
						}
				]
			},
			{
				test: /\.(js|jsx)$/,
				exclude: /node_modules/,
				loader: 'babel-loader'
			},
			{
				test: /\.scss$/,
				use: [
					'style-loader',
					MiniCssExtractPlugin.loader,
					// {
					// 	loader: 'css-loader',
					// 	options: { modules: true, exportOnlyLocals: false }
					// },
					'css-loader',
					{
						loader: 'sass-loader',
						options: {
							implementation: require('sass')
						}
					}
				]
			},
			{
				test: /\.css$/,
				use: [ 'style-loader', 'css-loader' ]
			}
		]
	},
	resolve: {
		extensions: [ '*', '.js', '.jsx' ]
	},
	plugins: [
		new MiniCssExtractPlugin({
			filename: 'style.[contenthash].css'
		}),
		new HtmlWebpackPlugin({
			inject: false,
			hash: true,
			template: 'index.html',
			filename: 'index.html'
		}),
		new CleanWebpackPlugin()
	],
	externals: {
		config: JSON.stringify({
			apiUrl: 'http://localhost:5000'
		})
	}
};
