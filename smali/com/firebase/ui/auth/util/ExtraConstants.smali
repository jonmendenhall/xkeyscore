.class public final Lcom/firebase/ui/auth/util/ExtraConstants;
.super Ljava/lang/Object;
.source "ExtraConstants.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final EXTRA_COUNTRY_CODE:Ljava/lang/String; = "extra_country_code"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "extra_email"

.field public static final EXTRA_FLOW_PARAMS:Ljava/lang/String; = "extra_flow_params"

.field public static final EXTRA_IDP_RESPONSE:Ljava/lang/String; = "extra_idp_response"

.field public static final EXTRA_NATIONAL_NUMBER:Ljava/lang/String; = "extra_national_number"

.field public static final EXTRA_PARAMS:Ljava/lang/String; = "extra_params"

.field public static final EXTRA_PHONE:Ljava/lang/String; = "extra_phone_number"

.field public static final EXTRA_USER:Ljava/lang/String; = "extra_user"

.field public static final HAS_EXISTING_INSTANCE:Ljava/lang/String; = "has_existing_instance"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instance for you!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
