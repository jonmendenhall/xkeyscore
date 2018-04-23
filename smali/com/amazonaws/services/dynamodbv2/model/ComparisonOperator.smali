.class public final enum Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;
.super Ljava/lang/Enum;
.source "ComparisonOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum BEGINS_WITH:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum BETWEEN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum EQ:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum GE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum GT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum IN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum LE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum LT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum NE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum NOT_CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum NOT_NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field public static final enum NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "EQ"

    const-string v2, "EQ"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->EQ:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 27
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "NE"

    const-string v2, "NE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 28
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "IN"

    const-string v2, "IN"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->IN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 29
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "LE"

    const-string v2, "LE"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->LE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 30
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "LT"

    const-string v2, "LT"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->LT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 31
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "GE"

    const-string v2, "GE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->GE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 32
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "GT"

    const-string v2, "GT"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->GT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 33
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "BETWEEN"

    const-string v2, "BETWEEN"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->BETWEEN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 34
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "NOT_NULL"

    const-string v2, "NOT_NULL"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NOT_NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 35
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "NULL"

    const-string v2, "NULL"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 36
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "CONTAINS"

    const-string v2, "CONTAINS"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 37
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "NOT_CONTAINS"

    const-string v2, "NOT_CONTAINS"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NOT_CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 38
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const-string v1, "BEGINS_WITH"

    const-string v2, "BEGINS_WITH"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->BEGINS_WITH:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    const/16 v0, 0xd

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->EQ:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->IN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->LE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->LT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->GE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->GT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->BETWEEN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NOT_NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NOT_CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v14

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->BEGINS_WITH:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    aput-object v1, v0, v15

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->$VALUES:[Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "EQ"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->EQ:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "NE"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "IN"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->IN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "LE"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->LE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "LT"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->LT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "GE"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->GE:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "GT"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->GT:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "BETWEEN"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->BETWEEN:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "NOT_NULL"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NOT_NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "NULL"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NULL:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "CONTAINS"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "NOT_CONTAINS"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->NOT_CONTAINS:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    const-string v1, "BEGINS_WITH"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->BEGINS_WITH:Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;
    .locals 3

    if-eqz p0, :cond_2

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    return-object p0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->$VALUES:[Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    invoke-virtual {v0}, [Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ComparisonOperator;->value:Ljava/lang/String;

    return-object v0
.end method
