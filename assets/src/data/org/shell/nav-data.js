export default function() { return {
  open: this.$persist(false),
  visible: this.$persist(false),
  backdrop: {
    ["x-show"](){
      return this.open
    },
    ["x-transition:enter"](){ return "transition-opacity ease-linear duration-300" },
    ["x-transition:enter-start"](){ return "opacity-0" },
    ["x-transition:enter-end"](){ return "opacity-100" },
    ["x-transition:leave"](){ return "transition-opacity ease-linear duration-200" },
    ["x-transition:leave-start"](){ return "opacity-100" },
    ["x-transition:leave-end"](){ return "opacity-0" }
  },
  sidebar: {
    ["x-show"](){
      return this.open
    },
    ["x-transition:enter"]() { return "transition ease-in-out duration-300" },
    ["x-transition:enter-start"]() { return "-translate-x-full" },
    ["x-transition:enter-end"]() { return "translate-x-0" },
    ["x-transition:leave"]() { return "transition ease-in-out duration-300" },
    ["x-transition:leave-start"]() { return "translate-x-0" },
    ["x-transition:leave-end"]() { return "-translate-x-full" }
  }
}}