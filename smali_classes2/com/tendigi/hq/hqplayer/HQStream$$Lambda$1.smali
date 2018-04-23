.class final synthetic Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/tendigi/hq/hqplayer/HQStream;


# direct methods
.method constructor <init>(Lcom/tendigi/hq/hqplayer/HQStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$1;->arg$1:Lcom/tendigi/hq/hqplayer/HQStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$1;->arg$1:Lcom/tendigi/hq/hqplayer/HQStream;

    invoke-virtual {v0}, Lcom/tendigi/hq/hqplayer/HQStream;->lambda$stop$1$HQStream()V

    return-void
.end method
