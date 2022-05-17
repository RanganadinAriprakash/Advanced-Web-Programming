<template>
    <div class="register">
        <h1>Register</h1>
        <form>
            <input type="text" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <router-link to="/register_success"><input type="submit" value="register"></router-link>
            <p>Already have an account? <router-link to="/login_item">Login here</router-link></p>
        </form>


    </div>
</template>

<style scoped>
h1{
    color: black;
}

</style>