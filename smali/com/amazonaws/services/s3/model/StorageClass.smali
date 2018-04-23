.class public final enum Lcom/amazonaws/services/s3/model/StorageClass;
.super Ljava/lang/Enum;
.source "StorageClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/StorageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum Standard:Lcom/amazonaws/services/s3/model/StorageClass;

.field public static final enum StandardInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;


# instance fields
.field private final storageClassId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "Standard"

    const-string v2, "STANDARD"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 51
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "ReducedRedundancy"

    const-string v2, "REDUCED_REDUNDANCY"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 58
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "Glacier"

    const-string v2, "GLACIER"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

    .line 63
    new-instance v0, Lcom/amazonaws/services/s3/model/StorageClass;

    const-string v1, "StandardInfrequentAccess"

    const-string v2, "STANDARD_IA"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/s3/model/StorageClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->StandardInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->Standard:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->ReducedRedundancy:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->Glacier:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/StorageClass;->StandardInfrequentAccess:Lcom/amazonaws/services/s3/model/StorageClass;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

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

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/amazonaws/services/s3/model/StorageClass;->values()[Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 82
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 34
    const-class v0, Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/StorageClass;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/StorageClass;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazonaws/services/s3/model/StorageClass;->$VALUES:[Lcom/amazonaws/services/s3/model/StorageClass;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/StorageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/StorageClass;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/StorageClass;->storageClassId:Ljava/lang/String;

    return-object v0
.end method
