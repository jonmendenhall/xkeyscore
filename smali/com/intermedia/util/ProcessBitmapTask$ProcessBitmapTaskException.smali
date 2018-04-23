.class Lcom/intermedia/util/ProcessBitmapTask$ProcessBitmapTaskException;
.super Ljava/lang/RuntimeException;
.source "ProcessBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/ProcessBitmapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessBitmapTaskException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/util/ProcessBitmapTask;


# direct methods
.method constructor <init>(Lcom/intermedia/util/ProcessBitmapTask;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/intermedia/util/ProcessBitmapTask$ProcessBitmapTaskException;->this$0:Lcom/intermedia/util/ProcessBitmapTask;

    .line 49
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
