import 'vuetify/dist/vuetify.min.css';
import 'material-design-icons-iconfont/dist/material-design-icons.css';

import Vue from 'vue';
import Vuetify from 'vuetify';
import colors from 'vuetify/es5/util/colors'

import App from '../views/App.vue';

import store from '../store/main';
import router from '../router/main';

Vue.use(Vuetify, {
  theme: {
    primary: colors.purple.darken2,
    secondary: colors.blue.base,
    accent: colors.yellow.base,
  },
  themeVariations: ['primary', 'secondary'],
});

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('app-mount'));
  const app = new Vue({
    el,
    store,
    router,
    render: h => h(App)
  });
});
