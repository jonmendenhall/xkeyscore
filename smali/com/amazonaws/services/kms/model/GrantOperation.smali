.class public final enum Lcom/amazonaws/services/kms/model/GrantOperation;
.super Ljava/lang/Enum;
.source "GrantOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/kms/model/GrantOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum CreateGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum Decrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum DescribeKey:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum Encrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GenerateDataKey:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum GenerateDataKeyWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum ReEncryptFrom:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum ReEncryptTo:Lcom/amazonaws/services/kms/model/GrantOperation;

.field public static final enum RetireGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/kms/model/GrantOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 26
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "Decrypt"

    const-string v2, "Decrypt"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->Decrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 27
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "Encrypt"

    const-string v2, "Encrypt"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->Encrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 28
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "GenerateDataKey"

    const-string v2, "GenerateDataKey"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 29
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "GenerateDataKeyWithoutPlaintext"

    const-string v2, "GenerateDataKeyWithoutPlaintext"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKeyWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 30
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "ReEncryptFrom"

    const-string v2, "ReEncryptFrom"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptFrom:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 31
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "ReEncryptTo"

    const-string v2, "ReEncryptTo"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptTo:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 32
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "CreateGrant"

    const-string v2, "CreateGrant"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->CreateGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 33
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "RetireGrant"

    const-string v2, "RetireGrant"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->RetireGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 34
    new-instance v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    const-string v1, "DescribeKey"

    const-string v2, "DescribeKey"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/services/kms/model/GrantOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->DescribeKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    const/16 v0, 0x9

    .line 24
    new-array v0, v0, [Lcom/amazonaws/services/kms/model/GrantOperation;

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->Decrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->Encrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKeyWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptFrom:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptTo:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->CreateGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->RetireGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/services/kms/model/GrantOperation;->DescribeKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    aput-object v1, v0, v11

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->$VALUES:[Lcom/amazonaws/services/kms/model/GrantOperation;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    .line 50
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "Decrypt"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->Decrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "Encrypt"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->Encrypt:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "GenerateDataKey"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKey:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "GenerateDataKeyWithoutPlaintext"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->GenerateDataKeyWithoutPlaintext:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "ReEncryptFrom"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptFrom:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "ReEncryptTo"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->ReEncryptTo:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "CreateGrant"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->CreateGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "RetireGrant"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->RetireGrant:Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    const-string v1, "DescribeKey"

    sget-object v2, Lcom/amazonaws/services/kms/model/GrantOperation;->DescribeKey:Lcom/amazonaws/services/kms/model/GrantOperation;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/amazonaws/services/kms/model/GrantOperation;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantOperation;
    .locals 3

    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/GrantOperation;

    return-object p0

    .line 73
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

    .line 69
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantOperation;
    .locals 1

    .line 24
    const-class v0, Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/kms/model/GrantOperation;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/kms/model/GrantOperation;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazonaws/services/kms/model/GrantOperation;->$VALUES:[Lcom/amazonaws/services/kms/model/GrantOperation;

    invoke-virtual {v0}, [Lcom/amazonaws/services/kms/model/GrantOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/kms/model/GrantOperation;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantOperation;->value:Ljava/lang/String;

    return-object v0
.end method
