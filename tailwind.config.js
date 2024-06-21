/** @type {import('tailwindcss').Config} */
module.exports = {
  
  content: ["./MainProyect/**/*.{html, js}"],
  theme: {
    darkMode: 'selector',
    extend: {
      colors: {
        green: "#6C987E",
        white: "#ffff",
      }
    },
  },
  plugins: [],
}

