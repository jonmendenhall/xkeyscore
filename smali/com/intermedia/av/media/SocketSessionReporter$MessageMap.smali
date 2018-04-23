.class Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;
.super Ljava/util/LinkedHashMap;
.source "SocketSessionReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/av/media/SocketSessionReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/av/media/SocketSessionReporter;


# direct methods
.method private constructor <init>(Lcom/intermedia/av/media/SocketSessionReporter;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;->this$0:Lcom/intermedia/av/media/SocketSessionReporter;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/intermedia/av/media/SocketSessionReporter;Lcom/intermedia/av/media/SocketSessionReporter$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;-><init>(Lcom/intermedia/av/media/SocketSessionReporter;)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/intermedia/av/media/SocketSessionReporter$MessageMap;->size()I

    move-result p1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
