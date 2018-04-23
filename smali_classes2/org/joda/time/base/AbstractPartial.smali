.class public abstract Lorg/joda/time/base/AbstractPartial;
.super Ljava/lang/Object;
.source "AbstractPartial.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/joda/time/ReadablePartial;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/ReadablePartial;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 314
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 315
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "ReadablePartial objects must have matching field types"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 317
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 318
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 319
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "ReadablePartial objects must have matching field types"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_3
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_6

    .line 324
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v4

    if-le v3, v4, :cond_4

    const/4 p1, 0x1

    return p1

    .line 327
    :cond_4
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 258
    :cond_0
    instance-of v0, p1, Lorg/joda/time/ReadablePartial;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 261
    :cond_1
    check-cast p1, Lorg/joda/time/ReadablePartial;

    .line 262
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 265
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 266
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    .line 270
    :cond_5
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result p1

    return p1
.end method

.method public getField(I)Lorg/joda/time/DateTimeField;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/base/AbstractPartial;->getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/base/AbstractPartial;->getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 3

    .line 90
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    const/4 v1, 0x0

    .line 91
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFields()[Lorg/joda/time/DateTimeField;
    .locals 3

    .line 116
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/DateTimeField;

    const/4 v1, 0x0

    .line 117
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getValues()[I
    .locals 3

    .line 132
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 133
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 281
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/16 v1, 0x9d

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/16 v3, 0x17

    mul-int/2addr v1, v3

    .line 282
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v4

    add-int/2addr v1, v4

    mul-int/2addr v3, v1

    .line 283
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .line 170
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected indexOf(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .line 202
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 203
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .line 187
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method protected indexOfSupported(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .line 219
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public isAfter(Lorg/joda/time/ReadablePartial;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 351
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Partial cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lorg/joda/time/ReadablePartial;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 373
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Partial cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Lorg/joda/time/ReadablePartial;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 395
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Partial cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .locals 1

    .line 160
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toDateTime(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/DateTime;
    .locals 3

    .line 240
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 241
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 242
    invoke-virtual {v0, p0, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v1

    .line 243
    new-instance p1, Lorg/joda/time/DateTime;

    invoke-direct {p1, v1, v2, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 412
    :cond_0
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
