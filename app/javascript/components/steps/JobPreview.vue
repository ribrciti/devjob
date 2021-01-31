<template>
  <div>
    <h2>Preview</h2>
    <a @click.prevent="next()" class="btn btn-outline-primary">Next</a>
    <a @click.prevent="prev()" class="btn btn-outline-dark">Back</a>
  </div>
</template>

<script>
  export default {
    props: {
      job: {
        type: Object,
        required: true,
      },
    },
    methods: {
      next() {
        this.$emit("nextStep");
      },

      prev() {
        this.$emit("prevStep");
      },
    },
  };

</script>

<style lang="scss" scoped>

</style>
