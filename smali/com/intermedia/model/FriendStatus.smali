.class public final enum Lcom/intermedia/model/FriendStatus;
.super Ljava/lang/Enum;
.source "FriendStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/intermedia/model/FriendStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/intermedia/model/FriendStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "FRIENDS",
        "NOT_FRIENDS",
        "PENDING_TO",
        "PENDING_FROM",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intermedia/model/FriendStatus;

.field public static final enum FRIENDS:Lcom/intermedia/model/FriendStatus;

.field public static final enum NOT_FRIENDS:Lcom/intermedia/model/FriendStatus;

.field public static final enum PENDING_FROM:Lcom/intermedia/model/FriendStatus;

.field public static final enum PENDING_TO:Lcom/intermedia/model/FriendStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/intermedia/model/FriendStatus;

    new-instance v1, Lcom/intermedia/model/FriendStatus;

    const-string v2, "FRIENDS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/intermedia/model/FriendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/intermedia/model/FriendStatus;->FRIENDS:Lcom/intermedia/model/FriendStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/intermedia/model/FriendStatus;

    const-string v2, "NOT_FRIENDS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/intermedia/model/FriendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/intermedia/model/FriendStatus;->NOT_FRIENDS:Lcom/intermedia/model/FriendStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/intermedia/model/FriendStatus;

    const-string v2, "PENDING_TO"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/intermedia/model/FriendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/intermedia/model/FriendStatus;->PENDING_TO:Lcom/intermedia/model/FriendStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/intermedia/model/FriendStatus;

    const-string v2, "PENDING_FROM"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/intermedia/model/FriendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/intermedia/model/FriendStatus;->PENDING_FROM:Lcom/intermedia/model/FriendStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/intermedia/model/FriendStatus;->$VALUES:[Lcom/intermedia/model/FriendStatus;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intermedia/model/FriendStatus;
    .locals 1

    const-class v0, Lcom/intermedia/model/FriendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/intermedia/model/FriendStatus;

    return-object p0
.end method

.method public static values()[Lcom/intermedia/model/FriendStatus;
    .locals 1

    sget-object v0, Lcom/intermedia/model/FriendStatus;->$VALUES:[Lcom/intermedia/model/FriendStatus;

    invoke-virtual {v0}, [Lcom/intermedia/model/FriendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intermedia/model/FriendStatus;

    return-object v0
.end method
