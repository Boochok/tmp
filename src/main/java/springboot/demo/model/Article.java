package springboot.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class Article {
    private String title;
    private String author;
    private String text;
    private List<Article> duplicates;

}
