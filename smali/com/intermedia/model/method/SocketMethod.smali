.class public abstract Lcom/intermedia/model/method/SocketMethod;
.super Ljava/lang/Object;
.source "SocketMethod.java"


# static fields
.field static final GSON:Lcom/google/gson/Gson;

.field static final TYPE_ANSWER:Ljava/lang/String; = "answer"

.field static final TYPE_CHAT_VISIBILITY_TOGGLED:Ljava/lang/String; = "chatVisibilityToggled"

.field static final TYPE_INTERACTION:Ljava/lang/String; = "interaction"

.field static final TYPE_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field static final TYPE_USE_EXTRA_LIFE:Ljava/lang/String; = "useExtraLife"


# instance fields
.field public final authToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final broadcastId:J

.field public final transient outgoingGameMessage:Lcom/intermedia/util/logging/events/OutgoingGameMessage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/intermedia/model/method/SocketMethod;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/intermedia/util/logging/events/OutgoingGameMessage;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/util/logging/events/OutgoingGameMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/intermedia/model/method/SocketMethod;->type:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/intermedia/model/method/SocketMethod;->authToken:Ljava/lang/String;

    .line 30
    iput-wide p3, p0, Lcom/intermedia/model/method/SocketMethod;->broadcastId:J

    .line 31
    iput-object p5, p0, Lcom/intermedia/model/method/SocketMethod;->outgoingGameMessage:Lcom/intermedia/util/logging/events/OutgoingGameMessage;

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    sget-object v0, Lcom/intermedia/model/method/SocketMethod;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/model/method/SocketMethod;->type:Ljava/lang/String;

    return-object v0
.end method
