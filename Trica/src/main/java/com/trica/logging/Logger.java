package com.trica.logging;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
@Component
@Aspect
public class Logger {
	private org.slf4j.Logger logger = LoggerFactory.getLogger(Logger.class);
	@Around("execution(* com..app.*Controller.*(..))")
	public Object logPrint(ProceedingJoinPoint pjp) throws Throwable {
		logger.info(pjp.getSignature().getDeclaringTypeName());
		Object result =  pjp.proceed();
		logger.info(pjp.getSignature().getDeclaringTypeName());
		return result;
	}

}
