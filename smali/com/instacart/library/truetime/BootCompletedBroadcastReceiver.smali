.class public Lcom/instacart/library/truetime/BootCompletedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootCompletedBroadcastReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 15
    sget-object p2, Lcom/instacart/library/truetime/BootCompletedBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v0, "---- clearing TrueTime disk cache as we\'ve detected a boot"

    invoke-static {p2, v0}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/instacart/library/truetime/TrueTime;->clearCachedInfo(Landroid/content/Context;)V

    return-void
.end method
