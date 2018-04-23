.class Lcom/intermedia/network/SocketMessageDispatcher$SocketMessageDispatcherException;
.super Ljava/lang/Throwable;
.source "SocketMessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/network/SocketMessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketMessageDispatcherException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/network/SocketMessageDispatcher;


# direct methods
.method constructor <init>(Lcom/intermedia/network/SocketMessageDispatcher;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/SocketMessageDispatcher;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/intermedia/network/SocketMessageDispatcher$SocketMessageDispatcherException;->this$0:Lcom/intermedia/network/SocketMessageDispatcher;

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method
