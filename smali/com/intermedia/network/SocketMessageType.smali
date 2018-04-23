.class public interface abstract Lcom/intermedia/network/SocketMessageType;
.super Ljava/lang/Object;
.source "SocketMessageType.java"


# static fields
.field public static final BROADCAST_ENDED:Ljava/lang/String; = "broadcastEnded"

.field public static final BROADCAST_FULL:Ljava/lang/String; = "broadcastFull"

.field public static final BROADCAST_STATS:Ljava/lang/String; = "broadcastStats"

.field public static final CHAT_VISIBILITY_TOGGLED:Ljava/lang/String; = "chatVisibilityToggled"

.field public static final EXTRA_LIFE:Ljava/lang/String; = "extraLife"

.field public static final GAME_STATUS:Ljava/lang/String; = "gameStatus"

.field public static final GAME_SUMMARY:Ljava/lang/String; = "gameSummary"

.field public static final GIFT_DROP:Ljava/lang/String; = "giftDrop"

.field public static final INTERACTION:Ljava/lang/String; = "interaction"

.field public static final KICKED:Ljava/lang/String; = "kicked"

.field public static final POST_GAME:Ljava/lang/String; = "postGame"

.field public static final QUESTION:Ljava/lang/String; = "question"

.field public static final QUESTION_CANCELED:Ljava/lang/String; = "questionCanceled"

.field public static final QUESTION_CLOSED:Ljava/lang/String; = "questionClosed"

.field public static final QUESTION_FINISHED:Ljava/lang/String; = "questionFinished"

.field public static final QUESTION_SUMMARY:Ljava/lang/String; = "questionSummary"

.field public static final supported:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 25
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "broadcastEnded"

    const-string v2, "broadcastFull"

    const-string v3, "broadcastStats"

    const-string v4, "chatVisibilityToggled"

    const-string v5, "extraLife"

    const-string v6, "gameSummary"

    const-string v7, "gameStatus"

    const-string v8, "giftDrop"

    const-string v9, "interaction"

    const-string v10, "kicked"

    const-string v11, "postGame"

    const-string v12, "question"

    const-string v13, "questionCanceled"

    const-string v14, "questionClosed"

    const-string v15, "questionFinished"

    const-string v16, "questionSummary"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/intermedia/network/SocketMessageType;->supported:Ljava/util/Set;

    return-void
.end method
