.class public final enum Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;
.super Ljava/lang/Enum;
.source "ScalarAttributeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

.field public static final enum B:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

.field public static final enum N:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

.field public static final enum S:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    const-string v1, "S"

    const-string v2, "S"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->S:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    .line 27
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    const-string v1, "N"

    const-string v2, "N"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->N:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    .line 28
    new-instance v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    const-string v1, "B"

    const-string v2, "B"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->B:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->S:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->N:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->B:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->$VALUES:[Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->enumMap:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->enumMap:Ljava/util/Map;

    const-string v1, "S"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->S:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->enumMap:Ljava/util/Map;

    const-string v1, "N"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->N:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->enumMap:Ljava/util/Map;

    const-string v1, "B"

    sget-object v2, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->B:Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;
    .locals 3

    if-eqz p0, :cond_2

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    return-object p0

    .line 61
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

    .line 57
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->$VALUES:[Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    invoke-virtual {v0}, [Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/ScalarAttributeType;->value:Ljava/lang/String;

    return-object v0
.end method
