.class public Lcom/facebook/appevents/internal/InAppPurchaseEventManager;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.java"


# static fields
.field private static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final GET_INTERFACE_METHOD:Ljava/lang/String; = "iap_get_interface"

.field private static final GET_SKU_DETAILS_METHOD:Ljava/lang/String; = "iap_get_sku_details"

.field private static final IN_APP_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field private static final IN_APP_BILLING_SERVICE_STUB:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final TAG:Ljava/lang/String;

.field private static final classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    .line 40
    const-class v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPurchaseDetails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 9

    if-eqz p2, :cond_6

    const-string v0, ""

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 95
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v1, "iap_get_sku_details"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 96
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    const-string v2, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 99
    new-array v0, v3, [Ljava/lang/Class;

    .line 100
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v0, v6

    .line 101
    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v5

    .line 102
    const-class v7, Ljava/lang/String;

    aput-object v7, v0, v2

    .line 103
    const-class v7, Landroid/os/Bundle;

    aput-object v7, v0, v4

    const-string v7, "getSkuDetails"

    .line 104
    invoke-virtual {v1, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 105
    sget-object v7, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v8, "iap_get_sku_details"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v7, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    const-string v8, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v8, "ITEM_ID_LIST"

    .line 112
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 114
    new-array v1, v3, [Ljava/lang/Object;

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    if-eqz p3, :cond_3

    const-string p0, "subs"

    goto :goto_0

    :cond_3
    const-string p0, "inapp"

    :goto_0
    aput-object p0, v1, v2

    aput-object p1, v1, v4

    .line 119
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "RESPONSE_CODE"

    .line 121
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "DETAILS_LIST"

    .line 123
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p1, v5, :cond_4

    const-string p0, ""

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    .line 145
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string p2, "Illegal access to method com.android.vending.billing.IInAppBillingService.getSkuDetails"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    .line 140
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string p2, "Invocation target exception in com.android.vending.billing.IInAppBillingService.getSkuDetails"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception p0

    .line 137
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string p2, "com.android.vending.billing.IInAppBillingService.getSkuDetails method is not available"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception p0

    .line 129
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string p2, "com.android.vending.billing.IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to the project, and import the IInAppBillingService.aidl file into this package"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    const-string p0, ""

    return-object p0

    :cond_6
    :goto_3
    const-string p0, ""

    return-object p0
.end method

.method public static getServiceInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 53
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v2, "iap_get_interface"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 56
    new-array v1, v3, [Ljava/lang/Class;

    .line 57
    const-class v4, Landroid/os/IBinder;

    aput-object v4, v1, v2

    const-string v4, "asInterface"

    .line 58
    invoke-virtual {p0, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    sget-object p0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    const-string v4, "iap_get_interface"

    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    .line 64
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v2, "In-app billing service connected"

    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 83
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v1, "Invocation target exception in com.android.vending.billing.IInAppBillingService$Stub.asInterface"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 78
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v1, "Illegal access to method com.android.vending.billing.IInAppBillingService$Stub.asInterface"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 75
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub.asInterface method not found"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    .line 68
    sget-object p1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub is not available, please add com.android.vending.billing.IInAppBillingService to the project."

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method
