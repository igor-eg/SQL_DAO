package ru.netology.sqlDao.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.sqlDao.repository.SqlRepository;

import java.util.List;
import java.util.Set;

@RestController
public class SqlController {
    private final SqlRepository sqlRepository;

    public SqlController(SqlRepository sqlRepository) {
        this.sqlRepository = sqlRepository;
    }

    @GetMapping("${endpoint}")
    public List<String> getProductName(@RequestParam("name") String name) {
        return sqlRepository.getProductName(name);
    }

}
