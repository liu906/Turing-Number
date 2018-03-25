package com.heitian.ssm.model;

import java.util.ArrayList;
import java.util.List;

public class scholarExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public scholarExample() {
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
            addCriterion("?SID is null");
            return (Criteria) this;
        }

        public Criteria andsidIsNotNull() {
            addCriterion("?SID is not null");
            return (Criteria) this;
        }

        public Criteria andsidEqualTo(String value) {
            addCriterion("?SID =", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidNotEqualTo(String value) {
            addCriterion("?SID <>", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidGreaterThan(String value) {
            addCriterion("?SID >", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidGreaterThanOrEqualTo(String value) {
            addCriterion("?SID >=", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidLessThan(String value) {
            addCriterion("?SID <", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidLessThanOrEqualTo(String value) {
            addCriterion("?SID <=", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidLike(String value) {
            addCriterion("?SID like", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidNotLike(String value) {
            addCriterion("?SID not like", value, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidIn(List<String> values) {
            addCriterion("?SID in", values, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidNotIn(List<String> values) {
            addCriterion("?SID not in", values, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidBetween(String value1, String value2) {
            addCriterion("?SID between", value1, value2, "?sid");
            return (Criteria) this;
        }

        public Criteria andsidNotBetween(String value1, String value2) {
            addCriterion("?SID not between", value1, value2, "?sid");
            return (Criteria) this;
        }

        public Criteria andSnameIsNull() {
            addCriterion("SName is null");
            return (Criteria) this;
        }

        public Criteria andSnameIsNotNull() {
            addCriterion("SName is not null");
            return (Criteria) this;
        }

        public Criteria andSnameEqualTo(String value) {
            addCriterion("SName =", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotEqualTo(String value) {
            addCriterion("SName <>", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameGreaterThan(String value) {
            addCriterion("SName >", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameGreaterThanOrEqualTo(String value) {
            addCriterion("SName >=", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameLessThan(String value) {
            addCriterion("SName <", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameLessThanOrEqualTo(String value) {
            addCriterion("SName <=", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameLike(String value) {
            addCriterion("SName like", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotLike(String value) {
            addCriterion("SName not like", value, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameIn(List<String> values) {
            addCriterion("SName in", values, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotIn(List<String> values) {
            addCriterion("SName not in", values, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameBetween(String value1, String value2) {
            addCriterion("SName between", value1, value2, "sname");
            return (Criteria) this;
        }

        public Criteria andSnameNotBetween(String value1, String value2) {
            addCriterion("SName not between", value1, value2, "sname");
            return (Criteria) this;
        }

        public Criteria andCoordinateIsNull() {
            addCriterion("Coordinate is null");
            return (Criteria) this;
        }

        public Criteria andCoordinateIsNotNull() {
            addCriterion("Coordinate is not null");
            return (Criteria) this;
        }

        public Criteria andCoordinateEqualTo(String value) {
            addCriterion("Coordinate =", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateNotEqualTo(String value) {
            addCriterion("Coordinate <>", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateGreaterThan(String value) {
            addCriterion("Coordinate >", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateGreaterThanOrEqualTo(String value) {
            addCriterion("Coordinate >=", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateLessThan(String value) {
            addCriterion("Coordinate <", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateLessThanOrEqualTo(String value) {
            addCriterion("Coordinate <=", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateLike(String value) {
            addCriterion("Coordinate like", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateNotLike(String value) {
            addCriterion("Coordinate not like", value, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateIn(List<String> values) {
            addCriterion("Coordinate in", values, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateNotIn(List<String> values) {
            addCriterion("Coordinate not in", values, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateBetween(String value1, String value2) {
            addCriterion("Coordinate between", value1, value2, "coordinate");
            return (Criteria) this;
        }

        public Criteria andCoordinateNotBetween(String value1, String value2) {
            addCriterion("Coordinate not between", value1, value2, "coordinate");
            return (Criteria) this;
        }

        public Criteria andPhotoIsNull() {
            addCriterion("Photo is null");
            return (Criteria) this;
        }

        public Criteria andPhotoIsNotNull() {
            addCriterion("Photo is not null");
            return (Criteria) this;
        }

        public Criteria andPhotoEqualTo(String value) {
            addCriterion("Photo =", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotEqualTo(String value) {
            addCriterion("Photo <>", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoGreaterThan(String value) {
            addCriterion("Photo >", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoGreaterThanOrEqualTo(String value) {
            addCriterion("Photo >=", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoLessThan(String value) {
            addCriterion("Photo <", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoLessThanOrEqualTo(String value) {
            addCriterion("Photo <=", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoLike(String value) {
            addCriterion("Photo like", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotLike(String value) {
            addCriterion("Photo not like", value, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoIn(List<String> values) {
            addCriterion("Photo in", values, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotIn(List<String> values) {
            addCriterion("Photo not in", values, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoBetween(String value1, String value2) {
            addCriterion("Photo between", value1, value2, "photo");
            return (Criteria) this;
        }

        public Criteria andPhotoNotBetween(String value1, String value2) {
            addCriterion("Photo not between", value1, value2, "photo");
            return (Criteria) this;
        }

        public Criteria andExperienceIsNull() {
            addCriterion("Experience is null");
            return (Criteria) this;
        }

        public Criteria andExperienceIsNotNull() {
            addCriterion("Experience is not null");
            return (Criteria) this;
        }

        public Criteria andExperienceEqualTo(String value) {
            addCriterion("Experience =", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceNotEqualTo(String value) {
            addCriterion("Experience <>", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceGreaterThan(String value) {
            addCriterion("Experience >", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceGreaterThanOrEqualTo(String value) {
            addCriterion("Experience >=", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceLessThan(String value) {
            addCriterion("Experience <", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceLessThanOrEqualTo(String value) {
            addCriterion("Experience <=", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceLike(String value) {
            addCriterion("Experience like", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceNotLike(String value) {
            addCriterion("Experience not like", value, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceIn(List<String> values) {
            addCriterion("Experience in", values, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceNotIn(List<String> values) {
            addCriterion("Experience not in", values, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceBetween(String value1, String value2) {
            addCriterion("Experience between", value1, value2, "experience");
            return (Criteria) this;
        }

        public Criteria andExperienceNotBetween(String value1, String value2) {
            addCriterion("Experience not between", value1, value2, "experience");
            return (Criteria) this;
        }

        public Criteria andTnumberMinIsNull() {
            addCriterion("Tnumber_min is null");
            return (Criteria) this;
        }

        public Criteria andTnumberMinIsNotNull() {
            addCriterion("Tnumber_min is not null");
            return (Criteria) this;
        }

        public Criteria andTnumberMinEqualTo(Integer value) {
            addCriterion("Tnumber_min =", value, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinNotEqualTo(Integer value) {
            addCriterion("Tnumber_min <>", value, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinGreaterThan(Integer value) {
            addCriterion("Tnumber_min >", value, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinGreaterThanOrEqualTo(Integer value) {
            addCriterion("Tnumber_min >=", value, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinLessThan(Integer value) {
            addCriterion("Tnumber_min <", value, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinLessThanOrEqualTo(Integer value) {
            addCriterion("Tnumber_min <=", value, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinIn(List<Integer> values) {
            addCriterion("Tnumber_min in", values, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinNotIn(List<Integer> values) {
            addCriterion("Tnumber_min not in", values, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinBetween(Integer value1, Integer value2) {
            addCriterion("Tnumber_min between", value1, value2, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTnumberMinNotBetween(Integer value1, Integer value2) {
            addCriterion("Tnumber_min not between", value1, value2, "tnumberMin");
            return (Criteria) this;
        }

        public Criteria andTbetweennessIsNull() {
            addCriterion("Tbetweenness is null");
            return (Criteria) this;
        }

        public Criteria andTbetweennessIsNotNull() {
            addCriterion("Tbetweenness is not null");
            return (Criteria) this;
        }

        public Criteria andTbetweennessEqualTo(Integer value) {
            addCriterion("Tbetweenness =", value, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessNotEqualTo(Integer value) {
            addCriterion("Tbetweenness <>", value, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessGreaterThan(Integer value) {
            addCriterion("Tbetweenness >", value, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessGreaterThanOrEqualTo(Integer value) {
            addCriterion("Tbetweenness >=", value, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessLessThan(Integer value) {
            addCriterion("Tbetweenness <", value, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessLessThanOrEqualTo(Integer value) {
            addCriterion("Tbetweenness <=", value, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessIn(List<Integer> values) {
            addCriterion("Tbetweenness in", values, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessNotIn(List<Integer> values) {
            addCriterion("Tbetweenness not in", values, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessBetween(Integer value1, Integer value2) {
            addCriterion("Tbetweenness between", value1, value2, "tbetweenness");
            return (Criteria) this;
        }

        public Criteria andTbetweennessNotBetween(Integer value1, Integer value2) {
            addCriterion("Tbetweenness not between", value1, value2, "tbetweenness");
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