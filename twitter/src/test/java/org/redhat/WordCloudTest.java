package org.redhat;

import com.kennycason.kumo.CollisionMode;
import com.kennycason.kumo.WordCloud;
import com.kennycason.kumo.WordFrequency;
import com.kennycason.kumo.bg.RectangleBackground;
import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import java.awt.*;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.fail;

@QuarkusTest
public class WordCloudTest {
    @Test
    public void testCloud() {
        final Dimension dimension = new Dimension(200, 200);
        final WordCloud wordCloud = new WordCloud(dimension, CollisionMode.PIXEL_PERFECT);
        wordCloud.setPadding(2);
        wordCloud.setBackground(new RectangleBackground(dimension));

        List<TwitterUser> list = TwitterUser.listAll();
        Map<String, List<TwitterUser>> collect = list.stream().collect(Collectors.groupingBy(t -> t.location));
        List<WordFrequency> frequencies = collect.entrySet().stream()
                                              .map(e -> new WordFrequency(e.getKey(), e.getValue().size()))
                                              .collect(Collectors.toList());

        wordCloud.build(frequencies);
        try {
            wordCloud.writeToStreamAsPNG(new FileOutputStream("/tmp/wordcloud.png"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

}
