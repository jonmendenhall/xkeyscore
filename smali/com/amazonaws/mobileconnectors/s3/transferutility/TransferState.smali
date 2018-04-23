.class public final enum Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
.super Ljava/lang/Enum;
.source "TransferState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field private static final LOGGER:Lorg/apache/commons/logging/Log;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 39
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 44
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 48
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "PAUSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 53
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "RESUMED_WAITING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 57
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "COMPLETED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 61
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "CANCELED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 65
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 71
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "WAITING_FOR_NETWORK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 77
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "PART_COMPLETED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 84
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "PENDING_CANCEL"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 91
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "PENDING_PAUSE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 98
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "PENDING_NETWORK_DISCONNECT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 103
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const-string v1, "UNKNOWN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v0, 0xd

    .line 33
    new-array v0, v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v1, v0, v14

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    .line 108
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 109
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->LOGGER:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 3

    .line 122
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p0

    .line 126
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " transfer will be have state set to UNKNOWN."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 128
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .line 33
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0}, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object v0
.end method
