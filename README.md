# Hotel Callbackfornia

## Resources and Relationships

This Rails 5 application is setup with the following resources:

* hotels
* rooms
* guests
* reservations

Hotels have many rooms.
Rooms belong to hotels.
Rooms have many guests, through reservations.
Guests have many rooms, through reservations.

## Setup

```bash
bundle install
bundle exec rake db:setup
```
