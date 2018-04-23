.class public final enum Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
.super Ljava/lang/Enum;
.source "PauseStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

.field public static final enum CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

.field public static final enum CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

.field public static final enum NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

.field public static final enum NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

.field public static final enum SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    .line 38
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    const-string v1, "NOT_STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    .line 44
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    const-string v1, "CANCELLED_BEFORE_START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    .line 50
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    const-string v1, "NO_EFFECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    .line 56
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    const-string v1, "CANCELLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    const/4 v0, 0x5

    .line 25
    new-array v0, v0, [Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
    .locals 1

    .line 25
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->$VALUES:[Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    invoke-virtual {v0}, [Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    return-object v0
.end method


# virtual methods
.method public isCancelled()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->CANCELLED_BEFORE_START:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 62
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unchanged()Z
    .locals 1

    .line 77
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NOT_STARTED:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->NO_EFFECT:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
