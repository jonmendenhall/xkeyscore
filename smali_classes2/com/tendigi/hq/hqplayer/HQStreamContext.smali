.class Lcom/tendigi/hq/hqplayer/HQStreamContext;
.super Ljava/lang/Object;
.source "HQStreamContext.java"


# instance fields
.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQStreamContext;->surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQStreamContext;->surface:Landroid/view/Surface;

    return-object v0
.end method
