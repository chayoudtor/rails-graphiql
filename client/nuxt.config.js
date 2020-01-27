
export default {
  mode: 'universal',
  head: {
    title: 'Nuxt Learning !',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: process.env.npm_package_description || '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
  loading: { color: '#fff' },
  css: [
  ],
  plugins: [{ src: '~/plugins/localStorage.js', ssr: false }],
  buildModules: [
    '@nuxtjs/eslint-module',
    '@nuxtjs/stylelint-module'
  ],
  modules: [
    'bootstrap-vue/nuxt',
    '@nuxtjs/axios',
    '@nuxtjs/apollo',
    '@nuxtjs/auth'
  ],
  apollo: {
    clientConfigs: {
      default: {
        httpEndpoint: 'http://localhost:8080/graphql'
      }
    }
  },
  axios: {
    baseURL: 'http://localhost:8080/graphql'
  },
  auth: {},
  build: {
    extend (config, ctx) {
    }
  }
}
