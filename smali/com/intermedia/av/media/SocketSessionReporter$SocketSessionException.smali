.class Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;
.super Ljava/lang/Throwable;
.source "SocketSessionReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/av/media/SocketSessionReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketSessionException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/av/media/SocketSessionReporter;


# direct methods
.method constructor <init>(Lcom/intermedia/av/media/SocketSessionReporter;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/av/media/SocketSessionReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    iput-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;->this$0:Lcom/intermedia/av/media/SocketSessionReporter;

    .line 142
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/intermedia/av/media/SocketSessionReporter;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/intermedia/av/media/SocketSessionReporter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 137
    iput-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter$SocketSessionException;->this$0:Lcom/intermedia/av/media/SocketSessionReporter;

    .line 138
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
