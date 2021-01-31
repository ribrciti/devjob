<template>
  <div>
    <h2>Purchase</h2>
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
      prev() {
        this.$emit("prevStep");
      },
    },
  };

</script>

<style lang="scss" scoped>


</style>
