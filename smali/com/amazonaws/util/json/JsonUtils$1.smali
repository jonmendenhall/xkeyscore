.class synthetic Lcom/amazonaws/util/json/JsonUtils$1;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/JsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazonaws$util$json$JsonUtils$JsonEngine:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->values()[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->$SwitchMap$com$amazonaws$util$json$JsonUtils$JsonEngine:[I

    :try_start_0
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->$SwitchMap$com$amazonaws$util$json$JsonUtils$JsonEngine:[I

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Gson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazonaws/util/json/JsonUtils$1;->$SwitchMap$com$amazonaws$util$json$JsonUtils$JsonEngine:[I

    sget-object v1, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->Jackson:Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    invoke-virtual {v1}, Lcom/amazonaws/util/json/JsonUtils$JsonEngine;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
