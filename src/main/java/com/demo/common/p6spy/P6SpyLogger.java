package com.demo.common.p6spy;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.p6spy.engine.logging.Category;
import com.p6spy.engine.spy.appender.FormattedLogger;

public class P6SpyLogger extends FormattedLogger {
	private static final Logger LOGGER = LoggerFactory.getLogger(P6SpyLogger.class);

	@Override
	public void logException(Exception e) {
		LOGGER.info("", e);
	}

	@Override
	public void logText(String text) {
		LOGGER.info(text);
	}

	/**
	 * 根据类别打印不同等级的日志
	 *
	 * @param connectionId: 连接ID
	 * @param now:          当前时间
	 * @param elapsed:      花费时间
	 * @param category:     类别
	 * @param prepared:     预编译SQL
	 * @param sql:          最终执行的SQL
	 * @param url:          数据库连接地址
	 * @date 2020/1/16 9:52
	 * @author lixiangx@leimingtech.com
	 **/
	@Override
	public void logSQL(int connectionId, String now, long elapsed, Category category, String prepared, String sql, String url) {

		final String msg = strategy.formatMessage(connectionId, now, elapsed, category.toString(), prepared, sql, url);
		if (StringUtils.isEmpty(msg)) {
			return;
		}
		if (Category.ERROR.equals(category)) {
			LOGGER.error(msg);
		} else if (Category.WARN.equals(category)) {
			LOGGER.warn(msg);
		} else if (Category.DEBUG.equals(category)) {
			LOGGER.debug(msg);
		} else {
			LOGGER.info(msg);
		}
	}

	/**
	 * 根据类别开启指定的日志级别
	 *
	 * @param category 日志类别
	 * @return 是否开启
	 * @date 2020/1/16 10:42
	 * @author lixiangx@leimingtech.com
	 **/
	@Override
	public boolean isCategoryEnabled(Category category) {
		if (Category.ERROR.equals(category)) {
			return LOGGER.isErrorEnabled();
		} else if (Category.WARN.equals(category)) {
			return LOGGER.isWarnEnabled();
		} else if (Category.DEBUG.equals(category)) {
			return LOGGER.isDebugEnabled();
		} else {
			return LOGGER.isInfoEnabled();
		}
	}
}
