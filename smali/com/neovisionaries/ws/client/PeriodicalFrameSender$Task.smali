.class final Lcom/neovisionaries/ws/client/PeriodicalFrameSender$Task;
.super Ljava/util/TimerTask;
.source "PeriodicalFrameSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/ws/client/PeriodicalFrameSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neovisionaries/ws/client/PeriodicalFrameSender;


# direct methods
.method private constructor <init>(Lcom/neovisionaries/ws/client/PeriodicalFrameSender;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/neovisionaries/ws/client/PeriodicalFrameSender$Task;->this$0:Lcom/neovisionaries/ws/client/PeriodicalFrameSender;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neovisionaries/ws/client/PeriodicalFrameSender;Lcom/neovisionaries/ws/client/PeriodicalFrameSender$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/neovisionaries/ws/client/PeriodicalFrameSender$Task;-><init>(Lcom/neovisionaries/ws/client/PeriodicalFrameSender;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/neovisionaries/ws/client/PeriodicalFrameSender$Task;->this$0:Lcom/neovisionaries/ws/client/PeriodicalFrameSender;

    invoke-static {v0}, Lcom/neovisionaries/ws/client/PeriodicalFrameSender;->access$100(Lcom/neovisionaries/ws/client/PeriodicalFrameSender;)V

    return-void
.end method
