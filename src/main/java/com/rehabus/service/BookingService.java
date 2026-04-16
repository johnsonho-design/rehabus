package com.rehabus.service;

import java.time.LocalDateTime;

public class BookingService {

    public void createBooking(String bookingDetails) {
        // Logic to create a booking
    }

    public void approveBooking(String bookingId) {
        // Logic to approve a booking
    }

    public void rejectBooking(String bookingId) {
        // Logic to reject a booking
    }

    public void cancelBooking(String bookingId) {
        // Logic to cancel a booking
    }

    public LocalDateTime calculateBookingDeadline(int hoursFromNow) {
        return LocalDateTime.now().plusHours(hoursFromNow);
    }
}