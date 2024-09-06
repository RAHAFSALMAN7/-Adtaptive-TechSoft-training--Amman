const path = require('path');
const webpack = require("webpack");
const HtmlWebpackPlugin = require("html-webpack-plugin");
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const CssMinimizerPlugin = require("css-minimizer-webpack-plugin");
const CopyWebpackPlugin = require('copy-webpack-plugin'); // استيراد CopyWebpackPlugin

module.exports = {
    entry: ["./src/client/index.js"],
    module: {
        rules: [
            {
                test: /\.js$/, // تعديل من '/\.js$/' إلى /\.js$/ للتوافق مع التعبيرات النمطية في JavaScript
                exclude: /node_modules/,
                use: {
                    loader: "babel-loader",
                }
            },
            {
                test: /\.scss$/, // إضافة دعم لـ SCSS إذا كان لديك ملفات SCSS
                use: [
                    'style-loader', // يقوم بإدراج CSS في DOM عبر إدخال عنصر <style>
                    'css-loader',   // يحلل ملفات CSS
                    'sass-loader'   // يترجم SCSS إلى CSS
                ]
            }
        ]
    },

    optimization: {
        minimizer: [
            new CssMinimizerPlugin(),
            // أضف هنا أدوات تحسين أخرى إذا لزم الأمر
        ],
        minimize: true,
    },

    plugins: [
        new HtmlWebpackPlugin({
            template: "./src/client/views/index.html",
            filename: "./index.html"
        }),
        new CleanWebpackPlugin({
            // Simulate the removal of files
            dry: true,
            // Write Logs to Console
            verbose: false,
            // Automatically remove all unused webpack assets on rebuild
            cleanStaleWebpackAssets: true,
            protectWebpackAssets: false,
        }),
        new CopyWebpackPlugin({
            patterns: [
                { from: 'public/service-worker.js', to: '' }, // نسخ ملف service-worker.js إلى الجذر
            ],
        })
    ],

    output: {
        filename: 'bundle.js', // اسم ملف الباندل الناتج
        path: path.resolve(__dirname, 'dist'), // مجلد الإخراج
        clean: true // ينظف مجلد الإخراج قبل الكتابة
    },

    resolve: {
        extensions: ['.js', '.jsx', '.json', '.scss'] // إضافة امتدادات ملفات
    }
};
