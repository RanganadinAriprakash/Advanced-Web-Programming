<template>
    <div class="login">
        <h1>Login</h1>
        <form>
            <input type="text" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <router-link to="/login_success"><input type="submit" value="Login"></router-link>
            <p>Need an account? <router-link to="/register_item">Register here</router-link></p>
        </form>


    </div>
</template>

<style scoped>
p,h1{
    color: black;
}


</style>
