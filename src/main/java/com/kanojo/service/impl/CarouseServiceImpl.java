package com.kanojo.service.impl;

import com.kanojo.mapper.CarouselsMapper;
import com.kanojo.pojo.Carousel;
import com.kanojo.service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarouseServiceImpl implements CarouselService {

    @Autowired
    private CarouselsMapper carouselsMapper;

    @Override
    public List<Carousel> get() {
        return carouselsMapper.selectList(null);
    }

    @Override
    public boolean add(Carousel carousel) {
        return carouselsMapper.insert(carousel) > 0;
    }

    @Override
    public boolean delete(Long carouselId) {
        return carouselsMapper.deleteById(carouselId) > 0;
    }

    @Override
    public boolean updateShunxu(List<Carousel> carousels) {
        carouselsMapper.delete(null);
        for (Carousel carousel : carousels) {
            carouselsMapper.insert(carousel);
        }
        return true;
    }
}
