.class final synthetic Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/tendigi/hq/hqplayer/HQStream;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tendigi/hq/hqplayer/HQStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;->arg$1:Lcom/tendigi/hq/hqplayer/HQStream;

    iput-object p2, p0, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;->arg$1:Lcom/tendigi/hq/hqplayer/HQStream;

    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQStream$$Lambda$0;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tendigi/hq/hqplayer/HQStream;->lambda$play$0$HQStream(Ljava/lang/String;)V

    return-void
.end method
