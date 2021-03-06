package ua.lviv.lgs.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import ua.lviv.lgs.dao.BucketOrderDao;
import ua.lviv.lgs.dao.impl.BucketOrderDaoImpl;
import ua.lviv.lgs.dommain.BucketOrder;
import ua.lviv.lgs.service.BucketOrderService;
import ua.lviv.lgs.service.CustomerService;

public class BucketOrderServiceImpl implements BucketOrderService {

	private static Logger LOGGER = Logger.getLogger(BucketOrderDaoImpl.class);
	private static BucketOrderService bucketOrderServiceImpl;

	private BucketOrderDao bucketOrderDao;

	public BucketOrderServiceImpl() {

		try {
			bucketOrderDao = new BucketOrderDaoImpl();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {

			LOGGER.error(e);
		}
	}

	public static BucketOrderService getBucketOrderService() {
		if (bucketOrderServiceImpl == null) {
			bucketOrderServiceImpl = new BucketOrderServiceImpl();
		}

		return bucketOrderServiceImpl;

	}

	@Override
	public BucketOrder create(BucketOrder t) {

		return bucketOrderDao.create(t);
	}

	@Override
	public BucketOrder read(Integer id) {

		return bucketOrderDao.read(id);
	}

	@Override
	public BucketOrder update(BucketOrder t) {

		return bucketOrderDao.update(t);
	}

	@Override
	public void delete(Integer id) {
		bucketOrderDao.delete(id);

	}

	@Override
	public List<BucketOrder> raedAll() {

		return bucketOrderDao.raedAll();
	}

}
