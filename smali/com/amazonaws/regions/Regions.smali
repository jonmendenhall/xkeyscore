.class public final enum Lcom/amazonaws/regions/Regions;
.super Ljava/lang/Enum;
.source "Regions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/regions/Regions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum CN_NORTH_1:Lcom/amazonaws/regions/Regions;

.field public static final DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum EU_WEST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum GovCloud:Lcom/amazonaws/regions/Regions;

.field public static final enum SA_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_EAST_2:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_1:Lcom/amazonaws/regions/Regions;

.field public static final enum US_WEST_2:Lcom/amazonaws/regions/Regions;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 24
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "GovCloud"

    const-string v2, "us-gov-west-1"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->GovCloud:Lcom/amazonaws/regions/Regions;

    .line 27
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_EAST_1"

    const-string v2, "us-east-1"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 30
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_EAST_2"

    const-string v2, "us-east-2"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_EAST_2:Lcom/amazonaws/regions/Regions;

    .line 33
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_WEST_1"

    const-string v2, "us-west-1"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazonaws/regions/Regions;

    .line 36
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "US_WEST_2"

    const-string v2, "us-west-2"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    .line 39
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "EU_WEST_1"

    const-string v2, "eu-west-1"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazonaws/regions/Regions;

    .line 42
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "EU_WEST_2"

    const-string v2, "eu-west-2"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->EU_WEST_2:Lcom/amazonaws/regions/Regions;

    .line 45
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "EU_CENTRAL_1"

    const-string v2, "eu-central-1"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    .line 48
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_SOUTH_1"

    const-string v2, "ap-south-1"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

    .line 51
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_SOUTHEAST_1"

    const-string v2, "ap-southeast-1"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

    .line 54
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_SOUTHEAST_2"

    const-string v2, "ap-southeast-2"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

    .line 57
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_NORTHEAST_1"

    const-string v2, "ap-northeast-1"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    .line 60
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "AP_NORTHEAST_2"

    const-string v2, "ap-northeast-2"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

    .line 63
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "SA_EAST_1"

    const-string v2, "sa-east-1"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazonaws/regions/Regions;

    .line 66
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "CA_CENTRAL_1"

    const-string v2, "ca-central-1"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    .line 69
    new-instance v0, Lcom/amazonaws/regions/Regions;

    const-string v1, "CN_NORTH_1"

    const-string v2, "cn-north-1"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/regions/Regions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazonaws/regions/Regions;

    const/16 v0, 0x10

    .line 21
    new-array v0, v0, [Lcom/amazonaws/regions/Regions;

    sget-object v1, Lcom/amazonaws/regions/Regions;->GovCloud:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_EAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_EAST_2:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_WEST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/regions/Regions;->EU_WEST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/regions/Regions;->EU_WEST_2:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/regions/Regions;->EU_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/regions/Regions;->AP_SOUTH_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/regions/Regions;->AP_SOUTHEAST_2:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_1:Lcom/amazonaws/regions/Regions;

    aput-object v1, v0, v14

    sget-object v1, Lcom/amazonaws/regions/Regions;->AP_NORTHEAST_2:Lcom/amazonaws/regions/Regions;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/regions/Regions;->SA_EAST_1:Lcom/amazonaws/regions/Regions;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/regions/Regions;->CA_CENTRAL_1:Lcom/amazonaws/regions/Regions;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/regions/Regions;->CN_NORTH_1:Lcom/amazonaws/regions/Regions;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    .line 75
    sget-object v0, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    sput-object v0, Lcom/amazonaws/regions/Regions;->DEFAULT_REGION:Lcom/amazonaws/regions/Regions;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 5

    .line 97
    invoke-static {}, Lcom/amazonaws/regions/Regions;->values()[Lcom/amazonaws/regions/Regions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 98
    invoke-virtual {v3}, Lcom/amazonaws/regions/Regions;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    .locals 1

    .line 21
    const-class v0, Lcom/amazonaws/regions/Regions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/regions/Regions;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/regions/Regions;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazonaws/regions/Regions;->$VALUES:[Lcom/amazonaws/regions/Regions;

    invoke-virtual {v0}, [Lcom/amazonaws/regions/Regions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/regions/Regions;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazonaws/regions/Regions;->name:Ljava/lang/String;

    return-object v0
.end method
