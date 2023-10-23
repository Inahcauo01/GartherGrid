package com.example.f34tur3s.service;

import com.example.f34tur3s.domain.Event;
import com.example.f34tur3s.domain.Ticket;
import com.example.f34tur3s.repository.TicketRepository;
import com.example.f34tur3s.service.dto.ResponseDTO;
import com.example.f34tur3s.service.dto.ResponseStatus;

import java.time.LocalDateTime;
import java.util.Random;

public class TicketService {
    private final TicketRepository ticketRepository;
    Random random = new Random();

    public TicketService() {
        this.ticketRepository = new TicketRepository();
    }

    public ResponseDTO insertTicketService(Ticket ticket){
        if(LocalDateTime.now().isAfter(ticket.getEvent().getDate())){
            return new ResponseDTO(ResponseStatus.ERROR,"THIS_EVENT_IS_PAST_DUE_DATE");
        } else if (!checkTicketAvailabilityService(ticket.getEvent())) {
            return new ResponseDTO(ResponseStatus.ERROR,"NO_TICKET_AVAILABLE");
        }
        int randomPositiveNumber = random.nextInt(Integer.MAX_VALUE);
        ticket.setNumber(randomPositiveNumber);
        return new ResponseDTO(ResponseStatus.CREATED,"TICKER_CREATED_SUCCESSFULLY",ticketRepository.addTicket(ticket));
    }


    public Boolean checkTicketAvailabilityService(Event event){
        Integer maxNbrStandard = event.getNbrStandard();
        Integer totalCount = ticketRepository.checkTicketAvailability(event);
        return totalCount < maxNbrStandard;
    }
}
