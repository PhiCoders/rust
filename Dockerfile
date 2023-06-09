FROM rust:alpine as rust-image


WORKDIR /usr/src/app

RUN rustup update

RUN rustup component add clippy rustfmt

FROM rust-image as dev

FROM rust-image as prod

COPY . .

CMD [ "cargo", "run", "--release" ]
