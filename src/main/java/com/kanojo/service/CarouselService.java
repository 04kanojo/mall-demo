package com.kanojo.service;

import com.kanojo.pojo.Carousel;

import java.util.List;

public interface CarouselService {
    List<Carousel> get();

    boolean add(Carousel carousel);

    boolean delete(Long carouselId);

    boolean updateShunxu(List<Carousel> carousels);
}
