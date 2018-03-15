function greeter(person: string) {
    return "Hello, " + person;
}

let person = "World";

document.body.innerHTML = greeter(person);