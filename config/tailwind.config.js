const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/components/**/*.{erb,haml,html,slim}'

  ],
  theme: {
    extend: {
      colors: {
        primary: {
          25: '#FFE8E0',
          50: '#FFD3C2',
          100: '#FFB29A',
          200: '#FF8E6B',
          300: '#FF764D',
          400: '#FF632F',
          500: '#FF5C13',
          600: '#E2520F',
          700: '#BF450B',
          800: '#9C3708',
          900: '#7A2A06',
          950: '#5E1F04',
        },
        secondary: {
          25: '#EFEAF8',
          50: '#DED3F1',
          100: '#C4AFE6',
          200: '#A88AD9',
          300: '#8D67CC',
          400: '#754CC0',
          500: '#5F3AA5',
          600: '#4B2E85',
          700: '#3A2468',
          800: '#2C1B4F',
          900: '#201239',
          950: '#160B26',
        },
        gray: {
          white: '#FFF',
          50: '#FCFCFD',
          100: '#F9FAFB',
          200: '#F2F4F7',
          300: '#EAECF0',
          400: '#D0D5DD',
          500: '#98A2B3',
          600: '#667085',
          700: '#475467',
          800: '#344054',
          900: '#1D2939',
          950: '#101828',
        }
      },
      fontFamily: {
        sans: ['Poppins', 'sans-serif']
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
