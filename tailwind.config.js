module.exports = {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.jsx",
        "./resources/**/*.vue",
        "./node_modules/flowbite/**/*.js",
    ],
    theme: {
        extend: {
            backgroundImage: {
                "hero-pattern": "url('/img/bg1.svg')",
                "footer-texture": "url('/img/footer-texture.png')",
            },
            colors: {
                "hijau-telpon": "#249A8C",
                "kuning-cerah": "#FFEF82",
                "kuning-gelap": "#EFD345",
                "hijau-cerah": "#BABD42",
                "hijau-gelap": "#82954B",
                "hijau-lime": "#799F0C",
                "kuning-lime": "#FFE000",
            },
        },
    },
    plugins: [require("@tailwindcss/forms"), require("flowbite/plugin")],
};
