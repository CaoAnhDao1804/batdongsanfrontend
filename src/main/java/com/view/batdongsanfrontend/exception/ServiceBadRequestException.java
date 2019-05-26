package com.view.batdongsanfrontend.exception;

public class ServiceBadRequestException extends RuntimeException {
    public ServiceBadRequestException(String message) {
        super(message);
    }

    public ServiceBadRequestException(final String message, final Throwable cause)
    {
        super(message, cause);
    }
}
