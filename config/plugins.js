module.exports = ({ env }) => ({
  email: {
    config: {
      provider: "sendgrid",
      providerOptions: {
        apiKey: env("SENDGRID_API_KEY"),
      },
      settings: {
        defaultFrom: "saiddrai42@gmail.com",
        defaultReplyTo: "myemail@protonmail.com",
      },
    },
  },
});
