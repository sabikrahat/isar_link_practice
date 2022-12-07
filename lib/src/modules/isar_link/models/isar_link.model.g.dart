// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_link.model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTeacherIsarLinkCollection on Isar {
  IsarCollection<TeacherIsarLink> get teacherIsarLinks => this.collection();
}

const TeacherIsarLinkSchema = CollectionSchema(
  name: r'TeacherIsarLink',
  id: -7919653925325353892,
  properties: {
    r'teacherName': PropertySchema(
      id: 0,
      name: r'teacherName',
      type: IsarType.string,
    )
  },
  estimateSize: _teacherIsarLinkEstimateSize,
  serialize: _teacherIsarLinkSerialize,
  deserialize: _teacherIsarLinkDeserialize,
  deserializeProp: _teacherIsarLinkDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _teacherIsarLinkGetId,
  getLinks: _teacherIsarLinkGetLinks,
  attach: _teacherIsarLinkAttach,
  version: '3.0.5',
);

int _teacherIsarLinkEstimateSize(
  TeacherIsarLink object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.teacherName.length * 3;
  return bytesCount;
}

void _teacherIsarLinkSerialize(
  TeacherIsarLink object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.teacherName);
}

TeacherIsarLink _teacherIsarLinkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TeacherIsarLink();
  object.id = id;
  object.teacherName = reader.readString(offsets[0]);
  return object;
}

P _teacherIsarLinkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _teacherIsarLinkGetId(TeacherIsarLink object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _teacherIsarLinkGetLinks(TeacherIsarLink object) {
  return [];
}

void _teacherIsarLinkAttach(
    IsarCollection<dynamic> col, Id id, TeacherIsarLink object) {
  object.id = id;
}

extension TeacherIsarLinkQueryWhereSort
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QWhere> {
  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TeacherIsarLinkQueryWhere
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QWhereClause> {
  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TeacherIsarLinkQueryFilter
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QFilterCondition> {
  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teacherName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teacherName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teacherName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teacherName',
        value: '',
      ));
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterFilterCondition>
      teacherNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teacherName',
        value: '',
      ));
    });
  }
}

extension TeacherIsarLinkQueryObject
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QFilterCondition> {}

extension TeacherIsarLinkQueryLinks
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QFilterCondition> {}

extension TeacherIsarLinkQuerySortBy
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QSortBy> {
  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterSortBy>
      sortByTeacherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.asc);
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterSortBy>
      sortByTeacherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.desc);
    });
  }
}

extension TeacherIsarLinkQuerySortThenBy
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QSortThenBy> {
  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterSortBy>
      thenByTeacherName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.asc);
    });
  }

  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QAfterSortBy>
      thenByTeacherNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teacherName', Sort.desc);
    });
  }
}

extension TeacherIsarLinkQueryWhereDistinct
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QDistinct> {
  QueryBuilder<TeacherIsarLink, TeacherIsarLink, QDistinct>
      distinctByTeacherName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teacherName', caseSensitive: caseSensitive);
    });
  }
}

extension TeacherIsarLinkQueryProperty
    on QueryBuilder<TeacherIsarLink, TeacherIsarLink, QQueryProperty> {
  QueryBuilder<TeacherIsarLink, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TeacherIsarLink, String, QQueryOperations>
      teacherNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teacherName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetStudentIsarLinkCollection on Isar {
  IsarCollection<StudentIsarLink> get studentIsarLinks => this.collection();
}

const StudentIsarLinkSchema = CollectionSchema(
  name: r'StudentIsarLink',
  id: -8654465922438861017,
  properties: {
    r'stdName': PropertySchema(
      id: 0,
      name: r'stdName',
      type: IsarType.string,
    )
  },
  estimateSize: _studentIsarLinkEstimateSize,
  serialize: _studentIsarLinkSerialize,
  deserialize: _studentIsarLinkDeserialize,
  deserializeProp: _studentIsarLinkDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'teacher': LinkSchema(
      id: 2041139352917875381,
      name: r'teacher',
      target: r'TeacherIsarLink',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _studentIsarLinkGetId,
  getLinks: _studentIsarLinkGetLinks,
  attach: _studentIsarLinkAttach,
  version: '3.0.5',
);

int _studentIsarLinkEstimateSize(
  StudentIsarLink object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.stdName.length * 3;
  return bytesCount;
}

void _studentIsarLinkSerialize(
  StudentIsarLink object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.stdName);
}

StudentIsarLink _studentIsarLinkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StudentIsarLink();
  object.id = id;
  object.stdName = reader.readString(offsets[0]);
  return object;
}

P _studentIsarLinkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _studentIsarLinkGetId(StudentIsarLink object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _studentIsarLinkGetLinks(StudentIsarLink object) {
  return [object.teacher];
}

void _studentIsarLinkAttach(
    IsarCollection<dynamic> col, Id id, StudentIsarLink object) {
  object.id = id;
  object.teacher
      .attach(col, col.isar.collection<TeacherIsarLink>(), r'teacher', id);
}

extension StudentIsarLinkQueryWhereSort
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QWhere> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StudentIsarLinkQueryWhere
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QWhereClause> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StudentIsarLinkQueryFilter
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QFilterCondition> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stdName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stdName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stdName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stdName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stdName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stdName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stdName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stdName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stdName',
        value: '',
      ));
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      stdNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stdName',
        value: '',
      ));
    });
  }
}

extension StudentIsarLinkQueryObject
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QFilterCondition> {}

extension StudentIsarLinkQueryLinks
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QFilterCondition> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition> teacher(
      FilterQuery<TeacherIsarLink> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'teacher');
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterFilterCondition>
      teacherIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'teacher', 0, true, 0, true);
    });
  }
}

extension StudentIsarLinkQuerySortBy
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QSortBy> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterSortBy> sortByStdName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stdName', Sort.asc);
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterSortBy>
      sortByStdNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stdName', Sort.desc);
    });
  }
}

extension StudentIsarLinkQuerySortThenBy
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QSortThenBy> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterSortBy> thenByStdName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stdName', Sort.asc);
    });
  }

  QueryBuilder<StudentIsarLink, StudentIsarLink, QAfterSortBy>
      thenByStdNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stdName', Sort.desc);
    });
  }
}

extension StudentIsarLinkQueryWhereDistinct
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QDistinct> {
  QueryBuilder<StudentIsarLink, StudentIsarLink, QDistinct> distinctByStdName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stdName', caseSensitive: caseSensitive);
    });
  }
}

extension StudentIsarLinkQueryProperty
    on QueryBuilder<StudentIsarLink, StudentIsarLink, QQueryProperty> {
  QueryBuilder<StudentIsarLink, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StudentIsarLink, String, QQueryOperations> stdNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stdName');
    });
  }
}
