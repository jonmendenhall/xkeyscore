.class public abstract Lcom/intermedia/push/NotificationChannelId;
.super Ljava/lang/Object;
.source "NotificationChannelId.java"


# static fields
.field static final EXTRA_LIFE:Ljava/lang/String; = "extra_life"

.field static final SHOW_TIME:Ljava/lang/String; = "show_time"

.field static final UNCATEGORIZED:Ljava/lang/String; = "uncategorized"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelIdForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x71727931    # -3.4889E-30f

    if-eq v0, v1, :cond_3

    const v1, -0x54272d4e

    if-eq v0, v1, :cond_2

    const v1, 0x2c8fddcb

    if-eq v0, v1, :cond_1

    const v1, 0x3a9e7a5d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "rate_us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "extra_life"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "uncategorized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    goto :goto_1

    :cond_3
    const-string v0, "show_time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const-string p0, "uncategorized"

    return-object p0

    :pswitch_0
    const-string p0, "show_time"

    return-object p0

    :pswitch_1
    const-string p0, "extra_life"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
