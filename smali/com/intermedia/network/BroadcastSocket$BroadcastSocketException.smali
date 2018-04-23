.class Lcom/intermedia/network/BroadcastSocket$BroadcastSocketException;
.super Ljava/lang/RuntimeException;
.source "BroadcastSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/network/BroadcastSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastSocketException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/network/BroadcastSocket;


# direct methods
.method constructor <init>(Lcom/intermedia/network/BroadcastSocket;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/intermedia/network/BroadcastSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    iput-object p1, p0, Lcom/intermedia/network/BroadcastSocket$BroadcastSocketException;->this$0:Lcom/intermedia/network/BroadcastSocket;

    .line 116
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
