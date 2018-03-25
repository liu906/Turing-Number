package com.heitian.ssm.model;

import java.util.ArrayList;
import java.util.List;

public class routeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public routeExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andsidIsNull() {
            addCriterion("Sid is null");
            return (Criteria) this;
        }

        public Criteria andsidIsNotNull() {
            addCriterion("Sid is not null");
            return (Criteria) this;
        }

        public Criteria andsidEqualTo(Integer value) {
            addCriterion("Sid =", value, "sid");
            return (Criteria) this;
        }

        public Criteria andsidNotEqualTo(Integer value) {
            addCriterion("Sid <>", value, "sid");
            return (Criteria) this;
        }

        public Criteria andsidGreaterThan(Integer value) {
            addCriterion("Sid >", value, "sid");
            return (Criteria) this;
        }

        public Criteria andsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("Sid >=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andsidLessThan(Integer value) {
            addCriterion("Sid <", value, "sid");
            return (Criteria) this;
        }

        public Criteria andsidLessThanOrEqualTo(Integer value) {
            addCriterion("Sid <=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andsidIn(List<Integer> values) {
            addCriterion("Sid in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andsidNotIn(List<Integer> values) {
            addCriterion("Sid not in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andsidBetween(Integer value1, Integer value2) {
            addCriterion("Sid between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andsidNotBetween(Integer value1, Integer value2) {
            addCriterion("Sid not between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andTidIsNull() {
            addCriterion("Tid is null");
            return (Criteria) this;
        }

        public Criteria andTidIsNotNull() {
            addCriterion("Tid is not null");
            return (Criteria) this;
        }

        public Criteria andTidEqualTo(Integer value) {
            addCriterion("Tid =", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotEqualTo(Integer value) {
            addCriterion("Tid <>", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidGreaterThan(Integer value) {
            addCriterion("Tid >", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidGreaterThanOrEqualTo(Integer value) {
            addCriterion("Tid >=", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLessThan(Integer value) {
            addCriterion("Tid <", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidLessThanOrEqualTo(Integer value) {
            addCriterion("Tid <=", value, "tid");
            return (Criteria) this;
        }

        public Criteria andTidIn(List<Integer> values) {
            addCriterion("Tid in", values, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotIn(List<Integer> values) {
            addCriterion("Tid not in", values, "tid");
            return (Criteria) this;
        }

        public Criteria andTidBetween(Integer value1, Integer value2) {
            addCriterion("Tid between", value1, value2, "tid");
            return (Criteria) this;
        }

        public Criteria andTidNotBetween(Integer value1, Integer value2) {
            addCriterion("Tid not between", value1, value2, "tid");
            return (Criteria) this;
        }

        public Criteria andTnumberyearIsNull() {
            addCriterion("Tnumberyear is null");
            return (Criteria) this;
        }

        public Criteria andTnumberyearIsNotNull() {
            addCriterion("Tnumberyear is not null");
            return (Criteria) this;
        }

        public Criteria andTnumberyearEqualTo(String value) {
            addCriterion("Tnumberyear =", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearNotEqualTo(String value) {
            addCriterion("Tnumberyear <>", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearGreaterThan(String value) {
            addCriterion("Tnumberyear >", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearGreaterThanOrEqualTo(String value) {
            addCriterion("Tnumberyear >=", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearLessThan(String value) {
            addCriterion("Tnumberyear <", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearLessThanOrEqualTo(String value) {
            addCriterion("Tnumberyear <=", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearLike(String value) {
            addCriterion("Tnumberyear like", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearNotLike(String value) {
            addCriterion("Tnumberyear not like", value, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearIn(List<String> values) {
            addCriterion("Tnumberyear in", values, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearNotIn(List<String> values) {
            addCriterion("Tnumberyear not in", values, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearBetween(String value1, String value2) {
            addCriterion("Tnumberyear between", value1, value2, "Tnumberyear");
            return (Criteria) this;
        }

        public Criteria andTnumberyearNotBetween(String value1, String value2) {
            addCriterion("Tnumberyear not between", value1, value2, "Tnumberyear");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}