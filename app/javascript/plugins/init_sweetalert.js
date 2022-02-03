import swal from "sweetalert";

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelectorAll(selector);
  swalButton.forEach((element) => {
    element.addEventListener("click", () => {
      swal(options).then(callback);
    });
  });
};

export { initSweetalert };
