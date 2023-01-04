module.exports = {
  async afterCreate(event) {
    const { result } = event;
    try {
      console.log(result);
      await strapi.plugins.email.services.email.send({
        to: "saiddrai39@gmail.com",

        replyTo: "saiddrai42@gmail.com",
        subject: "Welcome to Said",
        text: "Welcome to Said",
      });
    } catch (error) {
      console.log(error);
    }
  },
};
