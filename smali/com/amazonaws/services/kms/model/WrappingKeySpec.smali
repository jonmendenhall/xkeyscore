.class public final enum Lcom/amazonaws/services/kms/model/WrappingKeySpec;
.super Ljava/lang/Enum;
.source "WrappingKeySpec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/WrappingKeySpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/WrappingKeySpec;

.field public static final enum RSA_2048:Lcom/amazonaws/services/kms/model/WrappingKeySpec;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/WrappingKeySpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    const-string v1, "RSA_2048"

    const-string v2, "RSA_2048"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/kms/model/WrappingKeySpec;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->RSA_2048:Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    sget-object v1, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->RSA_2048:Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->$VALUES:[Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->enumMap:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->enumMap:Ljava/util/Map;

    const-string v1, "RSA_2048"

    sget-object v2, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->RSA_2048:Lcom/amazonaws/services/kms/model/WrappingKeySpec;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/WrappingKeySpec;
    .locals 3

    if-eqz p0, :cond_2

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    return-object p0

    .line 57
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

    .line 53
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/WrappingKeySpec;
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/WrappingKeySpec;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->$VALUES:[Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/WrappingKeySpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/kms/model/WrappingKeySpec;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/WrappingKeySpec;->value:Ljava/lang/String;

    return-object v0
.end method
