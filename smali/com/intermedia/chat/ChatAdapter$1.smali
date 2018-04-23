.class Lcom/intermedia/chat/ChatAdapter$1;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/chat/ChatAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/chat/ChatAdapter;


# direct methods
.method constructor <init>(Lcom/intermedia/chat/ChatAdapter;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$000(Lcom/intermedia/chat/ChatAdapter;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$100(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$200(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v1}, Lcom/intermedia/chat/ChatAdapter;->access$100(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    iget-object v1, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v1}, Lcom/intermedia/chat/ChatAdapter;->access$200(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/intermedia/chat/ChatAdapter;->notifyItemInserted(I)V

    .line 54
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$200(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$200(Lcom/intermedia/chat/ChatAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intermedia/chat/ChatAdapter;->notifyItemRemoved(I)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$300(Lcom/intermedia/chat/ChatAdapter;)Lcom/intermedia/function/NoArgCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/intermedia/chat/ChatAdapter$1;->this$0:Lcom/intermedia/chat/ChatAdapter;

    invoke-static {v0}, Lcom/intermedia/chat/ChatAdapter;->access$300(Lcom/intermedia/chat/ChatAdapter;)Lcom/intermedia/function/NoArgCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/intermedia/function/NoArgCallback;->call()V

    :cond_2
    return-void
.end method
