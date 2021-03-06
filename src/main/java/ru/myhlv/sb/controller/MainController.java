package ru.myhlv.sb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.myhlv.sb.domain.Message;
import ru.myhlv.sb.service.FileService;
import ru.myhlv.sb.service.MessageService;

@Controller
public class MainController {
    private final MessageService messageService;
    private final FileService fileService;

    @Autowired
    public MainController(MessageService messageService, FileService fileService) {
        this.messageService = messageService;
        this.fileService = fileService;
    }



    @GetMapping("/")
    public String showcase(Model model) {
        model.addAttribute("messages", messageService.allMessage());
        return "main";
    }


    @GetMapping("/main")
    public String filter(@RequestParam(required = false) String filterMessageText, Model model) {
        model.addAttribute("messages", messageService.allMessageWithFilter(filterMessageText));
        model.addAttribute("filterMessageText", filterMessageText);
        return "main";
    }

    @PostMapping("/main")
    public String add(
            @RequestParam(name = "messageText", required = false, defaultValue = "Default message text") String messageText,
            @RequestParam(name = "messagePicture", required = false) MultipartFile messagePicture,
            Model model) {
        Message message = new Message(messageText);
        if (fileService.fileNameIsValid(messagePicture)) {
            String tempFileName = fileService.getTempFileName(messagePicture);
            message.setFilePicture(tempFileName);
        }
        model.addAttribute("messages", messageService.addMessage(message));
        return "main";
    }
}
